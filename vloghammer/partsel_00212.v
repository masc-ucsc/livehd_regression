module partsel_00212(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input signed [31:0] x1;
  input [31:0] x2;
  input signed [31:0] x3;
  wire signed [31:4] x4;
  wire [25:1] x5;
  wire [2:24] x6;
  wire [26:3] x7;
  wire [0:28] x8;
  wire [5:29] x9;
  wire signed [28:4] x10;
  wire signed [6:25] x11;
  wire signed [31:4] x12;
  wire signed [4:25] x13;
  wire [1:25] x14;
  wire [7:29] x15;
  output [127:0] y;
  wire [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire signed [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [6:30] p0 = 231260981;
  localparam [3:30] p1 = 640474449;
  localparam signed [0:31] p2 = 461028036;
  localparam [3:24] p3 = 319297203;
  assign x4 = (!ctrl[1] || !ctrl[3] || ctrl[1] ? (x2[15 + s2] & x1[7 + s0]) : ({2{((x0[22 + s1 +: 3] & (p0 | x1[17 + s3])) ^ ((x2[10 + s3] + p2[10 + s2]) - p2))}} + {{2{x3[14 + s2]}}, {2{(p1[7 + s2 -: 7] | p3[9])}}}));
  assign x5 = {2{x3[10 + s1]}};
  assign x6 = p3[13 + s0 -: 2];
  assign x7 = p0[12 +: 2];
  assign x8 = (!ctrl[3] && !ctrl[1] && ctrl[3] ? x4[4 + s3 +: 1] : x6[23 + s1 -: 4]);
  assign x9 = (x2[0 + s3 +: 6] ^ x1[26 + s2 +: 3]);
  assign x10 = {(ctrl[1] || !ctrl[3] && !ctrl[3] ? {2{x9[19]}} : (ctrl[3] && !ctrl[3] || ctrl[3] ? p0[4 + s3] : {{p3[16 +: 3], p3}, x3[20 -: 4]})), x0[22]};
  assign x11 = (x10[11 + s3] ^ x4[7 + s0]);
  assign x12 = {2{(ctrl[0] && !ctrl[1] || !ctrl[3] ? ({2{{2{p3[28 + s3 -: 2]}}}} + {x8[28 + s3 -: 5], p0[6 + s1]}) : {2{(!ctrl[3] && !ctrl[3] && !ctrl[0] ? x0[13 + s2 +: 4] : x4[9])}})}};
  assign x13 = x2[21];
  assign x14 = (ctrl[2] || !ctrl[1] || ctrl[2] ? (p2[14 -: 1] | p2) : x7[13]);
  assign x15 = p3[27 + s0 +: 4];
  assign y0 = x7[19 + s3];
  assign y1 = p0[16];
  assign y2 = ((!ctrl[3] && ctrl[2] && ctrl[2] ? x14[11] : (!ctrl[3] || !ctrl[0] && ctrl[1] ? x8[16 -: 1] : ((x12[11 +: 4] - p0) | p2[15 -: 1]))) | p3[18 + s1]);
  assign y3 = ({2{(x1 + (ctrl[0] && !ctrl[2] && !ctrl[3] ? p0[9 +: 1] : (!ctrl[3] && ctrl[3] && !ctrl[2] ? x11[20 + s1 +: 8] : x13[16 + s3 -: 5])))}} + p2[10]);
endmodule
