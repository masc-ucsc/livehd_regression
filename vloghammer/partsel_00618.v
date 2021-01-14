module partsel_00618(ctrl, s0, s1, s2, s3, x0, x1, x2, x3, y);
  input [3:0] ctrl;
  input [2:0] s0;
  input [2:0] s1;
  input [2:0] s2;
  input [2:0] s3;
  input [31:0] x0;
  input [31:0] x1;
  input [31:0] x2;
  input [31:0] x3;
  wire [2:26] x4;
  wire signed [25:6] x5;
  wire signed [0:25] x6;
  wire signed [1:31] x7;
  wire signed [2:31] x8;
  wire signed [26:6] x9;
  wire [2:29] x10;
  wire signed [6:29] x11;
  wire signed [7:24] x12;
  wire [26:2] x13;
  wire [31:4] x14;
  wire [3:28] x15;
  output [127:0] y;
  wire signed [31:0] y0;
  wire signed [31:0] y1;
  wire signed [31:0] y2;
  wire [31:0] y3;
  assign y = {y0,y1,y2,y3};
  localparam signed [27:0] p0 = 545285424;
  localparam signed [3:25] p1 = 278597927;
  localparam [7:30] p2 = 316222260;
  localparam signed [1:26] p3 = 271553867;
  assign x4 = (((!ctrl[3] && ctrl[2] && ctrl[0] ? (!ctrl[0] || !ctrl[1] || ctrl[0] ? p2[20 -: 4] : (p1[17] ^ p3[17 + s1 +: 2])) : (!ctrl[3] && !ctrl[2] || !ctrl[2] ? p3 : (p2[13 -: 3] + x0[11 + s1]))) | {p1[15 -: 4], ({p0, p1[16 +: 1]} & {2{x2[22 + s1 -: 4]}})}) ^ ((!ctrl[0] && !ctrl[3] && !ctrl[2] ? x3[31 + s0 -: 7] : (p2[16] + x1[15 -: 2])) + p0[20]));
  assign x5 = p0[20 + s2 +: 2];
  assign x6 = {((p3[13] + x3[9]) - ((!ctrl[3] || ctrl[0] || ctrl[3] ? x1 : {2{p0[27 + s3 -: 4]}}) & ({2{x1}} + x0[21 + s1 +: 3]))), p2[19 +: 1]};
  assign x7 = (!ctrl[2] || ctrl[3] && ctrl[3] ? p3[12 + s0] : ((p1[15 + s1] | p3[26 + s2 +: 2]) ^ {2{{2{{(p2[14 +: 1] | x2), p1[19 -: 3]}}}}}));
  assign x8 = {2{{2{{2{(ctrl[0] && ctrl[1] && ctrl[0] ? {2{p2}} : (x0[5 + s0 +: 6] - (x7[4 + s0 -: 1] - x4[14 -: 1])))}}}}}};
  assign x9 = {2{{p2[17], x1}}};
  assign x10 = x8[20];
  assign x11 = {{2{(ctrl[0] && !ctrl[3] || !ctrl[1] ? {(ctrl[0] || ctrl[3] || !ctrl[2] ? (x8[4 + s2 +: 8] & p1[27 + s3 +: 4]) : x7), p1[17 +: 2]} : (((p1 & p3) ^ x0[19 -: 1]) ^ ((p3[15 -: 4] & x9[10]) & (x3[23 -: 4] & p3[11]))))}}, p0[11 + s2 +: 6]};
  assign x12 = ((p3 + p3) ^ p2[6 + s2]);
  assign x13 = p2[22];
  assign x14 = (ctrl[1] && !ctrl[1] || ctrl[1] ? p1 : x4[20 -: 4]);
  assign x15 = p0;
  assign y0 = p1;
  assign y1 = x1[7 + s0 +: 4];
  assign y2 = p0[2 + s0 -: 2];
  assign y3 = x0[3 + s1 -: 6];
endmodule
