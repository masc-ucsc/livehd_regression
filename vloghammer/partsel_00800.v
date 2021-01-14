module partsel_00800(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input signed [31:0] x3;
  wire [29:2] x4;
  wire [3:27] x5;
  wire signed [4:25] x6;
  wire signed [31:6] x7;
  wire [0:24] x8;
  wire signed [28:3] x9;
  wire signed [26:6] x10;
  wire [26:7] x11;
  wire [29:6] x12;
  wire signed [5:29] x13;
  wire [3:29] x14;
  wire signed [29:5] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:3] p0 = 702610078;
  localparam [1:24] p1 = 630910022;
  localparam [30:0] p2 = 704865781;
  localparam [28:3] p3 = 802504297;
  assign x4 = x3[21];
  assign x5 = (ctrl[3] && !ctrl[2] && !ctrl[3] ? (ctrl[2] || ctrl[3] && !ctrl[1] ? (ctrl[3] && ctrl[1] || !ctrl[0] ? x2[16 -: 2] : x2[4 + s0 -: 4]) : {2{{2{{2{x0[16]}}}}}}) : {2{(x3[13 +: 3] ^ p2[8])}});
  assign x6 = p2[15 + s3 +: 5];
  assign x7 = p1[25 + s2 -: 8];
  assign x8 = {2{(p0[7 + s3 +: 7] + (p0[10 + s3 +: 2] ^ x2[22 -: 2]))}};
  assign x9 = {2{(!ctrl[3] && ctrl[3] && ctrl[3] ? {2{p3[18 + s3]}} : p2[7 + s1])}};
  assign x10 = x4[19 +: 1];
  assign x11 = p3;
  assign x12 = p2[19];
  assign x13 = x1;
  assign x14 = x1[19 +: 3];
  assign x15 = x6;
  assign y0 = ({{{2{x8[11 +: 2]}}, p0[4 + s1]}, (ctrl[0] || ctrl[0] || !ctrl[3] ? (ctrl[3] && ctrl[1] || !ctrl[3] ? ((p2[22] + (x12[10] - p2)) & x10[13 + s1 -: 8]) : {((p3[21 + s0 -: 6] + p0[8 + s0]) - x1[23 -: 2]), (x5[19 +: 4] & (p1[15] ^ x7))}) : p3[19 -: 2])} + (ctrl[3] || !ctrl[0] && !ctrl[0] ? x8[13 +: 4] : {x3[22], p3[21]}));
  assign y1 = (!ctrl[2] && !ctrl[2] || !ctrl[3] ? x3[7 + s1 +: 8] : {(ctrl[2] && ctrl[1] && ctrl[3] ? p0[4 + s0 -: 5] : (x15[9 +: 1] | (!ctrl[1] || !ctrl[3] || ctrl[1] ? (x6[7 + s0 +: 2] - (x0[13 +: 4] | x12[21 -: 4])) : x0[21 -: 1]))), (ctrl[2] || !ctrl[2] || ctrl[2] ? {{2{x7}}, (p0[15 + s1] | p0[14])} : ((x8[20 + s1 +: 7] - p2[13 +: 4]) + p2))});
  assign y2 = (((x14 | (p1 & p3)) ^ (ctrl[0] || !ctrl[2] || !ctrl[0] ? p0[13] : x4[15 + s0])) ^ p0);
  assign y3 = ({2{x9}} - p1[15 + s3 +: 7]);
endmodule
