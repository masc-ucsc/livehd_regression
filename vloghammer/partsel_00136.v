module partsel_00136(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input signed [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire signed [5:25] x4;
  wire signed [6:28] x5;
  wire [25:2] x6;
  wire signed [0:24] x7;
  wire signed [30:1] x8;
  wire [2:29] x9;
  wire signed [26:2] x10;
  wire [31:2] x11;
  wire [25:2] x12;
  wire signed [3:27] x13;
  wire signed [4:25] x14;
  wire [1:29] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam [25:7] p0 = 465560891;
  localparam signed [30:6] p1 = 251493685;
  localparam signed [27:3] p2 = 184186190;
  localparam signed [5:31] p3 = 172874688;
  assign x4 = ((ctrl[1] && !ctrl[2] && !ctrl[1] ? {2{p1}} : x0[12 + s2 +: 1]) + p1[16 +: 1]);
  assign x5 = p2;
  assign x6 = {2{p3[5 + s1]}};
  assign x7 = (x6 & p0);
  assign x8 = ((!ctrl[3] && !ctrl[1] || !ctrl[2] ? ({p1[29 + s1 -: 5], {x2[13], x3[8 +: 3]}} & (ctrl[0] && ctrl[2] || !ctrl[2] ? p2 : (p0[12] + x0[5 + s1 +: 5]))) : p0[18 -: 3]) & {p3, x7});
  assign x9 = p3;
  assign x10 = x5;
  assign x11 = (ctrl[3] || ctrl[3] || ctrl[2] ? x6 : (({(ctrl[0] || ctrl[1] && !ctrl[1] ? (p3 - x9) : x2[8 + s1]), {p1[17 -: 4], p2[23 -: 2]}} | (!ctrl[1] || ctrl[2] || !ctrl[1] ? p2[19 -: 2] : (!ctrl[2] && !ctrl[0] || ctrl[1] ? x2 : x4[1 + s0 -: 8]))) + (((!ctrl[2] && !ctrl[3] || ctrl[0] ? x2[28 + s3 -: 1] : p1) - ((p3[4 + s2 +: 5] & x5[4 + s1 -: 8]) & p2[12 + s0])) ^ (x1[19 + s3 -: 1] - p0[14 + s2 -: 7]))));
  assign x12 = (({2{p2[16 -: 4]}} & p0[19 + s2]) + p1[12]);
  assign x13 = (x10[16 +: 1] ^ p2);
  assign x14 = (p2[18 + s2 -: 4] + (ctrl[1] && ctrl[0] || !ctrl[3] ? ((((x9[16 + s1 +: 8] & x3[8 +: 1]) ^ (x7 | (x7[16 +: 4] & (p0[15 +: 4] ^ x10[8])))) - {p3[25 + s1 -: 3], x6[1 + s3 +: 3]}) + x0[22]) : (ctrl[3] && ctrl[0] || !ctrl[2] ? p3 : ({2{p1[21]}} | (p3[19] & (p3[13 -: 1] | (p0[11 + s2 +: 6] | x0[28 + s2 +: 5])))))));
  assign x15 = p2[14 + s0];
  assign y0 = (x15[16 +: 1] + (!ctrl[3] || !ctrl[2] && !ctrl[0] ? ({(p3[28 + s2 +: 8] ^ x4[5 + s2 +: 2]), p3[13 -: 1]} | p3[15 + s2 -: 2]) : x9[19]));
  assign y1 = p3[15 +: 4];
  assign y2 = ((p1[6 + s2 +: 3] ^ x0[0 + s0 +: 4]) ^ ({x4[7 + s3 +: 7], (!ctrl[0] && ctrl[0] && ctrl[3] ? p2[16 -: 3] : x14)} & {2{((ctrl[2] && !ctrl[3] || !ctrl[2] ? p0 : x2[10 + s1 -: 5]) | (p1[14] ^ x8))}}));
  assign y3 = p2[15 + s2 +: 3];
endmodule
