module partsel_00310(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input signed [31:0] x2;
  input [31:0] x3;
  wire signed [28:1] x4;
  wire [28:3] x5;
  wire [5:30] x6;
  wire signed [1:31] x7;
  wire [27:2] x8;
  wire signed [30:2] x9;
  wire signed [2:31] x10;
  wire signed [27:3] x11;
  wire signed [5:30] x12;
  wire signed [26:6] x13;
  wire [1:24] x14;
  wire [26:7] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [29:7] p0 = 484153913;
  localparam [1:28] p1 = 250304227;
  localparam signed [26:7] p2 = 55161128;
  localparam signed [25:3] p3 = 461152466;
  assign x4 = x0;
  assign x5 = p2[11 +: 4];
  assign x6 = ({2{x2[11]}} + ((p3[8 + s3] & (ctrl[2] && !ctrl[3] || !ctrl[3] ? {2{p2[19]}} : (x4 & p3[29 + s2 +: 4]))) - x2[13 +: 3]));
  assign x7 = {({2{p1[18 +: 1]}} ^ ((ctrl[3] || ctrl[0] && ctrl[1] ? (x1[12 +: 2] & p1[15]) : x2[23 -: 3]) + p3[4 + s3])), p1[14 + s0]};
  assign x8 = x6[23];
  assign x9 = {2{x3[10]}};
  assign x10 = {2{x7}};
  assign x11 = {2{{(x4 & {2{(p0[10 + s0 -: 8] & x5[20 + s2 -: 8])}}), (((p2[13 +: 1] - p1[30 + s0 -: 2]) - (ctrl[0] || ctrl[1] && !ctrl[0] ? (p3 | p0[12 + s2 -: 5]) : (x2[16 + s1 +: 4] + p3))) - (((p2[12] | x3[11 + s3]) + x8[16 +: 2]) ^ {x6[16 + s2 -: 3], ((x9 | x6[23 + s2 -: 7]) + x6)}))}}};
  assign x12 = {2{(ctrl[3] && !ctrl[1] || ctrl[1] ? p0[14 + s0 +: 3] : (p2[8 + s2 -: 2] + ((((x5[13 +: 2] + p2) - x9[23]) - x0[23 + s2 -: 4]) & x0[14 -: 4])))}};
  assign x13 = x4[27 + s2 +: 6];
  assign x14 = p1;
  assign x15 = {2{p2[21 -: 2]}};
  assign y0 = {2{(ctrl[0] || ctrl[2] || !ctrl[0] ? x1[11 + s0 +: 5] : {2{{x2[23], x8[11]}}})}};
  assign y1 = p2;
  assign y2 = (p1[18 + s2] & (!ctrl[3] && ctrl[2] && ctrl[1] ? (x12[25 + s1 +: 8] - ((x11[17 +: 3] + p2[20 -: 1]) ^ (x5[10 +: 2] + p3[8 + s0 +: 6]))) : p2[5 + s2]));
  assign y3 = (p0[13 -: 1] - {x9, p1[15]});
endmodule
